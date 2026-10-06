.class public Lp6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp6/b$a;
    }
.end annotation


# static fields
.field private static a:Lp6/b$a;

.field private static b:Z


# direct methods
.method static synthetic a(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lp6/b;->f(Landroid/content/Context;Z)V

    return-void
.end method

.method public static b()Z
    .locals 1

    invoke-static {}, Lm6/a;->h()Z

    move-result v0

    return v0
.end method

.method private static c()Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public static d()Z
    .locals 1

    invoke-static {}, Lp6/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lp6/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lm6/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static e()Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method private static f(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyTeleState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartFiveGManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lp6/b;->b:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sput-boolean p1, Lp6/b;->b:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.securitycenter.intent.action.SMART_5G"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "game_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lp6/b;->b()Z

    move-result p1

    const-string v1, "smart_five_g_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "com.android.phone"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static g(Landroid/content/Context;Z)V
    .locals 3

    :try_start_0
    invoke-static {}, Lp6/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object v0

    invoke-virtual {v0}, Lp7/a;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lp7/d;->f()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz p1, :cond_3

    invoke-static {}, Lm6/a;->L()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lm6/a;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    invoke-static {}, Ld7/v;->e()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lm6/a;->A0()V

    invoke-static {}, Lp6/b;->b()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Lp6/b;->a:Lp6/b$a;

    if-nez p1, :cond_2

    new-instance p1, Lp6/b$a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, v0}, Lp6/b$a;-><init>(Landroid/os/Handler;)V

    sput-object p1, Lp6/b;->a:Lp6/b$a;

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.miui.securitycenter.remoteprovider"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "pref_smart_five_g"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object v0, Lp6/b;->a:Lp6/b$a;

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_3
    invoke-static {}, Lp6/b;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0, p1}, Lp6/b;->f(Landroid/content/Context;Z)V

    :cond_4
    sget-object p1, Lp6/b;->a:Lp6/b$a;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lp6/b;->a:Lp6/b$a;

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 p0, 0x0

    sput-object p0, Lp6/b;->a:Lp6/b$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method public static h(Z)V
    .locals 0

    invoke-static {p0}, Lm6/a;->z0(Z)V

    return-void
.end method
