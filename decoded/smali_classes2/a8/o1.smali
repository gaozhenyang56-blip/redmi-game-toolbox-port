.class public La8/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, La8/o1;->e(Landroid/content/Context;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, La8/o1;->g(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {p0, v0}, La8/o1;->f(Landroid/content/Context;Ljava/util/ArrayList;)V

    const-string v1, "PermissionUtils"

    const-string v2, "doclear"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.content.SystemIntent"

    const-string v2, "ACTION_SYSTEMUI_TASK_MANAGER_CLEAR"

    invoke-static {v1, v2}, La8/c0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.securityadd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.vpnsdkmanager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.screenrecorder"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.gamecenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.migameservice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.macro"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.barrage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.msa.global"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.mi.health"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.xiaomi.wearable"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    const-string v1, "clean_type"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "protected_pkgnames"

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)J
    .locals 3

    const-string v0, "game_booster_power"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "game_booster_power_val"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, La8/o1;->c(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lme/b0;->q(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic e(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, La8/o1;->i(Landroid/content/Context;)V

    return-void
.end method

.method private static f(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lm7/a;->h(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "package_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method private static g(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lm7/a;->h(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "package_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static h(Landroid/content/Context;)V
    .locals 1

    new-instance v0, La8/n1;

    invoke-direct {v0, p0}, La8/n1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, La8/q1;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static i(Landroid/content/Context;)V
    .locals 8

    const-string v0, "PermissionUtils"

    const-string v1, "setDownLoadFlagAndPullPopGameInternal start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, La8/k1;->b(Landroid/content/Context;)V

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_0

    invoke-static {p0}, La8/k1;->d(Landroid/content/Context;)V

    invoke-static {p0}, La8/k1;->e(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, La8/g0;->O()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, La8/k1;->c(Landroid/content/Context;)V

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3}, Lm6/a;->t()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lm6/a;->A()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p0}, La8/j0;->a(Landroid/content/Context;)V

    invoke-static {v4, v1}, La8/k0;->m(Landroid/content/pm/PackageManager;Ljava/util/List;)Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lx4/f1;->M(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {p0, v4, v2}, La8/k0;->l(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gamebooster/model/d;

    invoke-virtual {v4}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v6}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0, v7, v6, v4, v5}, La8/j0;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lw6/i;->p(Ljava/util/List;)V

    invoke-static {v5}, Lm6/a;->l0(Z)V

    invoke-static {p0}, La8/i0;->c(Landroid/content/Context;)La8/i0;

    move-result-object v1

    new-instance v3, La8/o1$a;

    invoke-direct {v3, v2, p0}, La8/o1$a;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, La8/i0;->a(Lo4/a$a;)V

    :cond_5
    const-string p0, "setDownLoadFlagAndPullPopGameInternal finish"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
