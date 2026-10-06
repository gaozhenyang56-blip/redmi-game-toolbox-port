.class public La8/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static g:Lu1/a;

.field private static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lu1/c;->b:Lu1/c;

    invoke-virtual {v0}, Lu1/c;->a()I

    move-result v0

    sput v0, La8/t;->a:I

    sget-object v0, Lu1/c;->e:Lu1/c;

    invoke-virtual {v0}, Lu1/c;->a()I

    move-result v0

    sput v0, La8/t;->b:I

    sget-object v0, Lu1/c;->f:Lu1/c;

    invoke-virtual {v0}, Lu1/c;->a()I

    move-result v0

    sput v0, La8/t;->c:I

    sget-object v0, Lu1/c;->g:Lu1/c;

    invoke-virtual {v0}, Lu1/c;->a()I

    move-result v0

    sput v0, La8/t;->d:I

    sget-object v0, Lu1/c;->c:Lu1/c;

    invoke-virtual {v0}, Lu1/c;->a()I

    move-result v0

    sput v0, La8/t;->e:I

    sget-object v0, Lu1/c;->d:Lu1/c;

    invoke-virtual {v0}, Lu1/c;->a()I

    move-result v0

    sput v0, La8/t;->f:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, La8/t;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, La8/t;->i:Ljava/util/List;

    const-string v1, "rubens"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "matisse"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static A(I)V
    .locals 1

    invoke-static {}, La8/t;->n()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "DolbyEffectUtils"

    const-string v0, "skip setStereoWideningAmount..."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, La8/t;->k()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, La8/t;->z(Z)V

    invoke-static {p0}, La8/t;->g(I)I

    move-result p0

    invoke-static {}, La8/t;->c()I

    move-result v0

    invoke-static {p0, v0}, La8/t;->B(II)V

    return-void
.end method

.method private static B(II)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStereoWideningAmount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DolbyEffectUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, La8/t;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lj8/c;->l(II)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, La8/t;->l()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, La8/t;->a()V

    sget-object v0, La8/t;->g:Lu1/a;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, p0, p1}, Lu1/a;->u(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static declared-synchronized a()V
    .locals 3

    const-class v0, La8/t;

    monitor-enter v0

    :try_start_0
    sget-object v1, La8/t;->g:Lu1/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lu1/a;->hasControl()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "DolbyEffectUtils"

    const-string v2, "initDolbyIfNeed: init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, La8/t;->g:Lu1/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/audiofx/AudioEffect;->release()V

    :cond_1
    new-instance v1, Lu1/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lu1/a;-><init>(II)V

    sput-object v1, La8/t;->g:Lu1/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b()I
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getDevicesForStream"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "DolbyEffectUtils"

    const-string v3, "getActiveDevices error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private static c()I
    .locals 2

    invoke-static {}, La8/t;->b()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x80

    if-eq v0, v1, :cond_3

    const/16 v1, 0x400

    if-eq v0, v1, :cond_2

    const v1, 0x8000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x4000000

    if-eq v0, v1, :cond_0

    sget v0, La8/t;->a:I

    goto :goto_0

    :cond_0
    sget v0, La8/t;->d:I

    goto :goto_0

    :cond_1
    sget v0, La8/t;->f:I

    goto :goto_0

    :cond_2
    sget v0, La8/t;->e:I

    goto :goto_0

    :cond_3
    sget v0, La8/t;->c:I

    goto :goto_0

    :cond_4
    sget v0, La8/t;->b:I

    :goto_0
    return v0
.end method

.method private static d(I)I
    .locals 2

    invoke-static {}, La8/t;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    :cond_0
    mul-int/lit8 p0, p0, 0x3

    add-int/2addr p0, v0

    return p0

    :cond_1
    mul-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static e(I)I
    .locals 0

    div-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static f()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, La8/t;->l()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-static {}, La8/t;->a()V

    sget-object v1, La8/t;->g:Lu1/a;

    invoke-virtual {v1}, Lu1/a;->h()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProfile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbyEffectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static g(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/16 p0, 0x40

    return p0

    :cond_1
    const/16 p0, 0x2c

    return p0

    :cond_2
    const/16 p0, 0x18

    return p0
.end method

.method public static h(I)I
    .locals 1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static i()Z
    .locals 2

    const-string v0, "ro.vendor.audio.nosupport_bt_dolby"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static j()Z
    .locals 1

    invoke-static {}, La8/t;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lj8/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static k()Z
    .locals 5

    invoke-static {}, La8/t;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lj8/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "dolby"

    invoke-static {v0}, Lj8/c;->b(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const-string v0, "DolbyEffectUtils"

    const-string v2, "isDolbyOn"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, La8/t;->a()V

    sget-object v2, La8/t;->g:Lu1/a;

    invoke-virtual {v2}, Lu1/a;->d()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDolbyOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static l()Z
    .locals 2

    invoke-static {}, Lj8/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "dolby"

    invoke-static {v0}, Lj8/c;->d(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "ro.vendor.audio.dolby.dax.support"

    invoke-static {v1, v0}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static m()Z
    .locals 3

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v1, La8/t;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Li8/c;->l()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    sget-object v1, La8/t;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static n()Z
    .locals 1

    invoke-static {}, Lj8/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lj8/c;->e()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, La8/t;->l()Z

    move-result v0

    return v0
.end method

.method private static o()Z
    .locals 1

    invoke-static {}, Lj8/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lj8/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static p()Z
    .locals 2

    invoke-static {}, La8/t;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "ro.vendor.audio.dolby.dialog_enchancement.parameter"

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static q()V
    .locals 4

    const-string v0, "DolbyEffectUtils"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, La8/t;->l()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, La8/t;->a()V

    sget-object v1, La8/t;->g:Lu1/a;

    invoke-virtual {v1}, Landroid/media/audiofx/AudioEffect;->release()V

    const/4 v1, 0x0

    sput-object v1, La8/t;->g:Lu1/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static r()V
    .locals 4

    const-string v0, "DolbyEffectUtils"

    const-string v1, "restoreProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, La8/t;->l()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, La8/t;->a()V

    sget-object v1, La8/t;->g:Lu1/a;

    invoke-static {}, Li8/c;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Lu1/a;->t(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreProfile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static s()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.ACTION_SYSTEM_UI_DOLBY_EFFECT_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.misound"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static t(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDialogEnhancerAmount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DolbyEffectUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, La8/t;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lj8/c;->h(I)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, La8/t;->l()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, La8/t;->a()V

    sget-object v0, La8/t;->g:Lu1/a;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, p0}, Lu1/a;->o(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static u(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDialogEnhancerEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DolbyEffectUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, La8/t;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lj8/c;->i(Z)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, La8/t;->l()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, La8/t;->a()V

    sget-object v0, La8/t;->g:Lu1/a;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, p0}, Lu1/a;->p(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static v(I)V
    .locals 1

    invoke-static {}, La8/t;->n()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "DolbyEffectUtils"

    const-string v0, "skip setDialogEnhancerValue..."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, La8/t;->k()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, La8/t;->u(Z)V

    invoke-static {p0}, La8/t;->d(I)I

    move-result p0

    invoke-static {p0}, La8/t;->t(I)V

    return-void
.end method

.method public static w(Z)V
    .locals 1

    invoke-static {}, Lj8/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "dolby"

    invoke-static {v0, p0}, Lj8/c;->j(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, La8/t;->x(Z)V

    :goto_0
    return-void
.end method

.method private static x(Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDolbyEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DolbyEffectUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, La8/t;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, La8/t;->a()V

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    invoke-static {v3}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->l(Z)V

    sget-object v3, La8/t;->g:Lu1/a;

    invoke-virtual {v3, v0}, Lu1/a;->q(Z)V

    invoke-static {v0}, La8/t;->y(Z)V

    goto :goto_0

    :cond_1
    invoke-static {v3}, La8/t;->y(Z)V

    invoke-static {}, La8/t;->r()V

    sget-object v4, La8/t;->g:Lu1/a;

    invoke-virtual {v4, v3}, Lu1/a;->q(Z)V

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->l(Z)V

    :goto_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "effect_implementer"

    if-eqz p0, :cond_2

    const-string p0, "dolby"

    goto :goto_1

    :cond_2
    const-string p0, "misound"

    :goto_1
    invoke-static {v0, v3, p0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, La8/t;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static y(Z)V
    .locals 1

    new-instance v0, La8/t$a;

    invoke-direct {v0, p0}, La8/t$a;-><init>(Z)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static z(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHeadphoneVirtualizerEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DolbyEffectUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, La8/t;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lj8/c;->k(Z)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, La8/t;->l()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, La8/t;->a()V

    sget-object v0, La8/t;->g:Lu1/a;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, p0}, Lu1/a;->r(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
