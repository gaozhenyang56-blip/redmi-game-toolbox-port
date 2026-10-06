.class public Llb/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lof/i$d;

    invoke-direct {v0}, Lof/i$d;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "com.miui.optimizemanage"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3f3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lof/i$d;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lof/i$d;->h:Z

    invoke-static {p0, v0}, Lof/i;->l(Landroid/content/Context;Lof/i$d;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static c()J
    .locals 7

    invoke-static {}, Lkb/a;->b()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    cmp-long v6, v2, v0

    if-lez v6, :cond_0

    sub-long/2addr v2, v0

    return-wide v2

    :cond_0
    return-wide v4
.end method

.method public static declared-synchronized d()Ljava/util/concurrent/Executor;
    .locals 2

    const-class v0, Llb/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Llb/g;->a:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Llb/g;->a:Ljava/util/concurrent/Executor;

    :cond_0
    sget-object v1, Llb/g;->a:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static e()J
    .locals 7

    invoke-static {}, Lx4/t;->g()J

    move-result-wide v0

    invoke-static {}, Lx4/t;->m()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    sub-long v0, v2, v0

    const-wide/16 v4, 0x64

    mul-long/2addr v0, v4

    div-long v4, v0, v2

    :goto_0
    return-wide v4
.end method

.method public static f()Z
    .locals 4

    invoke-static {}, Lkb/a;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x493e0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    move v0, p1

    :catch_0
    :cond_1
    return v0
.end method

.method public static h(Ljava/util/ArrayList;ZLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "miui.process.ProcessConfig"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "setWhiteList"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v6, Ljava/util/List;

    aput-object v6, v4, v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p0, v6, v5

    invoke-static {v1, v3, v4, v6}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "setRemoveTaskNeeded"

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-static {v1, p0, v3, v4}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "setRemovingTaskIdList"

    new-array p1, v2, [Ljava/lang/Class;

    const-class v3, Ljava/util/List;

    aput-object v3, p1, v5

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v5

    invoke-static {v1, p0, p1, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "miui.process.ProcessManager"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string p1, "kill"

    new-array p2, v2, [Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aput-object v0, p2, v5

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v1, v0, v5

    invoke-static {p0, p1, p2, v0}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Utils"

    const-string p2, "reflect error while kill process in optimizemanage"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 11

    invoke-static {}, Lx4/t;->m()J

    move-result-wide v0

    invoke-static {}, Llb/g;->e()J

    move-result-wide v2

    const-wide v4, 0x100000000L

    cmp-long v4, v0, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_0

    const-wide/16 v7, 0x4b

    cmp-long v7, v2, v7

    if-gez v7, :cond_2

    :cond_0
    const-wide v7, 0x80000000L

    if-gtz v4, :cond_1

    cmp-long v4, v0, v7

    if-lez v4, :cond_1

    const-wide/16 v9, 0x50

    cmp-long v4, v2, v9

    if-gez v4, :cond_2

    :cond_1
    cmp-long v0, v0, v7

    if-gtz v0, :cond_3

    const-wide/16 v0, 0x55

    cmp-long v0, v2, v0

    if-ltz v0, :cond_3

    :cond_2
    move v0, v6

    goto :goto_0

    :cond_3
    move v0, v5

    :goto_0
    if-nez v0, :cond_4

    return-void

    :cond_4
    new-instance v0, Lw4/b$b;

    invoke-direct {v0, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Lw4/b$b;->r(I)Lw4/b$b;

    const v4, 0x7f120f8c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "com.miui.optimizemanage"

    invoke-virtual {v0, v7, v4}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    const v4, 0x7f120f14

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    const v4, 0x7f080db7

    invoke-virtual {v0, v4}, Lw4/b$b;->q(I)Lw4/b$b;

    sget-boolean v8, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v8, :cond_5

    const v4, 0x7f080f25

    :cond_5
    invoke-virtual {v0, v4}, Lw4/b$b;->v(I)Lw4/b$b;

    const v4, 0x7f120f16

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lx4/i1;->a(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {p0, v4, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    const v4, 0x7f120f15

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lw4/b$b;->l(I)Lw4/b$b;

    invoke-virtual {v0, v6}, Lw4/b$b;->i(Z)Lw4/b$b;

    invoke-virtual {v0, v6}, Lw4/b$b;->p(Z)Lw4/b$b;

    new-instance v4, Landroid/content/Intent;

    const-string v8, "miui.intent.action.OPTIMIZE_MANAGE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "enter_homepage_way"

    const-string v9, "notification"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4, v5}, Lw4/b$b;->u(Landroid/content/Intent;I)Lw4/b$b;

    invoke-virtual {v0}, Lw4/b$b;->a()Lw4/b;

    move-result-object v0

    invoke-virtual {v0}, Lw4/b;->I()V

    const-string v0, "module_show"

    const-string v4, "OptimezeManage"

    invoke-static {v0, v4, v1}, Lq4/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lof/i$d;

    invoke-direct {v0}, Lof/i$d;-><init>()V

    const-string v8, "#Intent;action=miui.intent.action.OPTIMIZE_MANAGE;end"

    iput-object v8, v0, Lof/i$d;->b:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lof/i$d;->a:Ljava/lang/String;

    const v7, 0x7f120f06

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lx4/i1;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v5

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lof/i$d;->d:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lof/i$d;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lof/i$d;->f:J

    const/4 v2, 0x6

    invoke-static {p0, v4, v1, v2}, Lq4/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Lof/i$d;->g:I

    iput-boolean v6, v0, Lof/i$d;->h:Z

    invoke-static {p0, v0}, Lof/i;->l(Landroid/content/Context;Lof/i$d;)V

    return-void
.end method

.method public static j(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const/16 v0, 0x3e7

    if-ne p2, v0, :cond_0

    const-string p2, "pkg_icon_xspace://"

    goto :goto_0

    :cond_0
    const-string p2, "pkg_icon://"

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lx4/o0;->f:Lrh/c;

    const v0, 0x7f0804c9

    invoke-static {p1, p0, p2, v0}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Llb/g$a;

    invoke-direct {v0, p0}, Llb/g$a;-><init>(Landroid/content/Context;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
