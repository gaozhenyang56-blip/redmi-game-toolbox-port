.class public Lx4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lx4/d;->a:Ljava/util/List;

    const/4 v1, 0x0

    sput-boolean v1, Lx4/d;->b:Z

    const-string v1, "com.android.email"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.soundrecorder"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.duokan.phone.remotecontroller"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.mi.health"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.duokan.reader"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Ljava/lang/String;F)V
    .locals 6

    const-string v0, "android.sizecompat.MiuiSizeCompatManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v5

    const/4 p0, 0x0

    const-string p1, "setMiuiSizeCompatRatio"

    invoke-static {v0, p0, p1, v2, v1}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Lh3/n;
    .locals 7

    new-instance v6, Lh3/n;

    sget v3, Lx6/a;->e:F

    sget v5, Lx6/a;->d:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lh3/n;-><init>(Ljava/lang/String;IFZI)V

    :try_start_0
    invoke-static {}, Lx4/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v6

    :cond_0
    sget-boolean v0, Lx4/d;->b:Z

    if-nez v0, :cond_1

    invoke-static {}, Lx4/d;->h()V

    :cond_1
    invoke-static {p2}, Lx4/d;->g(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p3, p0, p1}, Lx4/d;->i(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    :cond_2
    iget p1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3, p0, p1}, La8/j0;->o(Landroid/content/Context;Ljava/lang/String;I)Lx6/b;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Lh3/n;

    const/4 v2, 0x1

    iget-object p3, p1, Lx6/b;->d:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x0

    iget v5, p1, Lx6/b;->c:I

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lh3/n;-><init>(Ljava/lang/String;IFZI)V

    return-object p2

    :cond_3
    invoke-static {}, Lx4/s1;->c()Lx4/s1;

    move-result-object p1

    invoke-virtual {p1}, Lx4/s1;->b()Ljava/util/Map;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    const/4 p3, 0x1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lh3/n;

    const/4 v2, 0x2

    sget v3, Lx6/a;->e:F

    const/4 v4, 0x1

    sget v5, Lx6/a;->a:I

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lh3/n;-><init>(Ljava/lang/String;IFZI)V

    return-object p1

    :cond_4
    move v4, p3

    goto :goto_0

    :cond_5
    move v4, p2

    :goto_0
    const-string p1, "android.sizecompat.MiuiSizeCompatManager"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class p3, Ljava/util/Map;

    const-string v0, "getMiuiSizeCompatEnabledApps"

    const/4 v1, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p3, v0, v1, p2}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1}, Lx4/d;->d(Ljava/lang/Object;)F

    move-result v3

    invoke-static {p1}, Lx4/d;->c(Ljava/lang/Object;)I

    move-result v5

    new-instance p1, Lh3/n;

    const/4 v2, 0x2

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lh3/n;-><init>(Ljava/lang/String;IFZI)V

    return-object p1

    :cond_6
    new-instance p1, Lh3/n;

    const/4 v2, 0x2

    sget v3, Lx6/a;->f:F

    sget v5, Lx6/a;->a:I

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lh3/n;-><init>(Ljava/lang/String;IFZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_7
    :goto_1
    return-object v6

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fail call : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApplicationSizeCompatManger"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method private static c(Ljava/lang/Object;)I
    .locals 1

    const-string v0, "mGravity"

    invoke-static {p0, v0}, Lbh/f;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static d(Ljava/lang/Object;)F
    .locals 1

    const-string v0, "mAspectRatio"

    invoke-static {p0, v0}, Lbh/f;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static e()Z
    .locals 1

    sget-boolean v0, Lsl/a;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, La8/z;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, La8/z;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static f()Z
    .locals 2

    const-string v0, "ro.config.miui_compat_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {}, Lx4/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static g(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.miui"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lx4/d;->a:Ljava/util/List;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private static h()V
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lx4/s1;->c()Lx4/s1;

    move-result-object v1

    invoke-virtual {v1}, Lx4/s1;->b()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "$NoSwitch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lx4/d;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x9

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :goto_1
    sput-boolean v0, Lx4/d;->b:Z

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "ApplicationSizeCompatManger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "joinUnSupportApplication fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    sput-boolean v0, Lx4/d;->b:Z

    throw v1
.end method

.method private static i(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 1

    const-string v0, "launcherapps"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static j(Lh3/n;F)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lh3/n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lx6/a;->e:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lh3/n;->g(F)V

    invoke-static {}, Lx4/s1;->c()Lx4/s1;

    move-result-object p1

    invoke-virtual {p0}, Lh3/n;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lx4/s1;->e(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lh3/n;->b()Ljava/lang/String;

    move-result-object p0

    sget p1, Lx6/a;->f:F

    :goto_0
    invoke-static {p0, p1}, Lx4/d;->a(Ljava/lang/String;F)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lh3/n;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lh3/n;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lx4/s1;->c()Lx4/s1;

    move-result-object v0

    invoke-virtual {p0}, Lh3/n;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lx4/s1;->e(Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lh3/n;->g(F)V

    invoke-virtual {p0}, Lh3/n;->b()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApplicationSizeCompatManger"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static k(Lh3/n;FLandroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    invoke-virtual {p0}, Lh3/n;->d()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lh3/n;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lh3/n;->g(F)V

    new-instance v0, Lx6/b;

    invoke-virtual {p0}, Lh3/n;->b()Ljava/lang/String;

    move-result-object v1

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Lh3/n;->a()I

    move-result p0

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p3, p0, p1}, Lx6/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {p2, v0}, Lw6/i;->u(Landroid/content/Context;Lx6/b;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lx4/d;->j(Lh3/n;F)V

    :goto_0
    return-void
.end method
